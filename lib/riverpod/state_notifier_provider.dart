import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
        (ref) => ShoppingListNotifier());

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
      : super(
          [
            ShoppingItemModel(
              name: '신동진 참 맛있는 쌀 10kg',
              quantity: 3,
              hasBought: true,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '맛있는 라면',
              quantity: 1,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '펩시 제로 라임 500ml',
              quantity: 12,
              hasBought: true,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '보리먹인 돼지 삼겹살',
              quantity: 12,
              hasBought: true,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '비비고 왕교자 1050g',
              quantity: 2,
              hasBought: true,
              isSpicy: false,
            ),
          ],
        );

  void toggleHasBought({required String name}) {
    state = state
        .map(
          (e) => e.name == name
              ? ShoppingItemModel(
                  name: e.name,
                  quantity: e.quantity,
                  hasBought: !e.hasBought,
                  isSpicy: e.isSpicy,
                )
              : e,
        )
        .toList();
  }
}
