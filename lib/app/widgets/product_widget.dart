import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/payment_methods.dart';
import 'package:gap/gap.dart';

class ProductWidget extends StatefulWidget {
  final String name;
  final double price;
  final int available;
  final List<Map<String, dynamic>> variants;

  const ProductWidget({
    super.key,
    required this.name,
    required this.price,
    required this.available,
    required this.variants,
  });

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  int _quantity = 1;
  int _selectedVariantIndex = 0;
  final PageController _pageController = PageController();

  void _updateQuantity(bool increase) {
    setState(() {
      if (increase) {
        _quantity++;
      } else if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  void _selectVariant(int index) {
    setState(() {
      _selectedVariantIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get selected variant image and color
    // final selectedVariant = widget.variants[_selectedVariantIndex];
    // final variantImage = selectedVariant['image'];
    // final variantColor = selectedVariant['color'];

    return Column(
      children: [
        Gap(20),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 350,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.variants.length,
                  onPageChanged: (index) {
                    setState(() {
                      _selectedVariantIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(
                      widget.variants[index]['image'],
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
              Gap(15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(widget.variants.length, (index) {
                  return GestureDetector(
                    onTap: () => _selectVariant(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(4),
                      width: _selectedVariantIndex == index ? 20 : 15,
                      height: _selectedVariantIndex == index ? 40 : 20,
                      decoration: BoxDecoration(
                        color: widget.variants[index]['color'],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color:
                              _selectedVariantIndex == index
                                  ? Colors.grey.shade600
                                  : Colors.grey.shade200,
                          width: 2,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        Gap(15),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomText(
              title: widget.name,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              textColor: AppColors.darkBlue,
            ),
          ),
        ),
        Gap(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                title: 'Price: \$${widget.price.toStringAsFixed(2)}',
                fontWeight: FontWeight.bold,
                fontSize: 25,
                textColor: Colors.blue,
              ),
              CustomText(
                title: 'Available: ${widget.available}',
                fontSize: 14,
                textColor: Colors.blue,
              ),
            ],
          ),
        ),
        Gap(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(title: 'Quantity:'),
              Gap(10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => _updateQuantity(false),
                    child: const Icon(
                      Icons.remove_circle,
                      color: AppColors.alertRed,
                    ),
                  ),
                  Gap(10),
                  CustomText(title: _quantity.toString()),
                  Gap(10),
                  GestureDetector(
                    onTap: () => _updateQuantity(true),
                    child: const Icon(Icons.add_circle, color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
        Gap(25),
        const PaymentMethods(),
        Gap(30),
      ],
    );
  }
}
