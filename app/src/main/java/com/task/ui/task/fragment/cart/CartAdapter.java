package com.task.ui.task.fragment.cart;

import android.app.Activity;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.task.R;
import com.task.utils.UpdateTotalPriceListener;
import com.task.data.local.sqlite.Cart;
import com.task.data.local.sqlite.CartHelper;
import com.task.ui.common.adapter.BaseAdapter;
import com.task.ui.common.adapter.BaseViewHolder;
import com.task.utils.PicassoImageLoader;
import java.util.ArrayList;
import java.util.List;

public class CartAdapter extends BaseAdapter<Cart,CartAdapter.ItemViewHolder>  {

    private Activity activityContext;
    private CartHelper cartHelper;
    private UpdateTotalPriceListener updateTotalPriceListener;

    public CartAdapter(Activity activityContext, List<Cart> recyclerViewItemModelList, UpdateTotalPriceListener updateTotalPriceListener) {
        super(recyclerViewItemModelList);
        this.activityContext = activityContext;
        cartHelper = new CartHelper(activityContext);
        this.updateTotalPriceListener = updateTotalPriceListener;
    }

    @Override
    protected int getItemLayoutResource(int viewType) {
        return R.layout.cart_row;
    }

    @Override
    protected ItemViewHolder initViewHolder(View view, int viewType) {
        return new ItemViewHolder(view);
    }

    public class ItemViewHolder extends BaseViewHolder {

        private TextView itemName;
        private TextView itemPrice;
        private ImageView itemImage;
        public final TextView quantityTextView;
        private Button decreaseButton, increaseButton;

        public ItemViewHolder(@NonNull View itemView) {
            super(itemView);
            itemName = itemView.findViewById(R.id.itemName);
            itemPrice = itemView.findViewById(R.id.itemPrice);
            itemImage = itemView.findViewById(R.id.itemImage);
            decreaseButton = itemView.findViewById(R.id.decrease_button);
            quantityTextView = itemView.findViewById(R.id.quantity);
            increaseButton = itemView.findViewById(R.id.increase_button);
        }

        @Override
        public void onBind(Object item) {
            if(item instanceof Cart)
            {
                itemName.setText(((Cart) item).getItemName());
                itemPrice.setText(((Cart) item).getItemPrice()+" \u20B9");
                PicassoImageLoader.loadImage(activityContext,((Cart) item).getItemImage(),itemImage);

                increaseButton.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {

                        String quantityString =  quantityTextView.getText().toString();
                        int quantity = Integer.parseInt(quantityString)+ 1;

                        double extraFoodAmount = CartFragment.totalAmount;
                        double newTotalAmount = Double.valueOf(((Cart) item).getItemPrice()) + extraFoodAmount*quantity;

                        if (quantity > 1)
                        {
                            //******* If minus price is smaller and food price is large then this block run
                            System.out.println("***********************minus price is less than food price");
                        }
                        else {
                            quantityTextView.setText("" + quantity);
                            updateTotalPriceListener.onUpdate(newTotalAmount, ((Cart) item).getItemId());
                        }
                    }
                });

                decreaseButton.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {

                        String quantityString = quantityTextView.getText().toString();
                        int quantity = Integer.parseInt(quantityString) - 1;

                        double extraFoodAmount = CartFragment.totalAmount;
                        double newTotalAmount = Double.valueOf(((Cart) item).getItemPrice()) + extraFoodAmount*quantity;

                        if (quantity <= 1)
                        {
                            //******* If minus price is smaller and food price is large then this block run
                            System.out.println("***********************minus price is less than food price");
                        }
                        else {
                            quantityTextView.setText("" + quantity);
                            updateTotalPriceListener.onUpdate(newTotalAmount, ((Cart) item).getItemId());
                        }
                    }
                });
            }
        }
    }
}