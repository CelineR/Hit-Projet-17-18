package com.itssf.smart_receipt;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Layout;
import android.view.View;
import android.widget.LinearLayout;

public class MenuActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu);

        // Tickets de caisses
        LinearLayout mReceiptsItem = (LinearLayout) findViewById(R.id.menu_receipt);
        mReceiptsItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, MenuReceiptActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });

        // Magasins
        LinearLayout mStoresItem = (LinearLayout) findViewById(R.id.menu_store);
        mStoresItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, MenuStoresActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });

        // Produits
        LinearLayout mProductsItem = (LinearLayout) findViewById(R.id.menu_products);
        mProductsItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, ProductsActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });

        // Listes de course de l'utilisateur
        LinearLayout mProductListItem = (LinearLayout) findViewById(R.id.menu_list);
        mProductListItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, ProductListActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });

        // alertes de l'utilisateur
        LinearLayout mAlertesItem = (LinearLayout) findViewById(R.id.menu_alarm);
        mAlertesItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, AlerteActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });

        // consomation de l'utilisateur
        LinearLayout mConsumptionItem = (LinearLayout) findViewById(R.id.menu_conso);
        mConsumptionItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, ConsumptionActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });

        // paramètres de l'utilisateur
        LinearLayout mParametersItem = (LinearLayout) findViewById(R.id.menu_settings);
        mParametersItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, ParametersActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });

        // déconnexion de l'utilisateur
        LinearLayout mDisconnectItem = (LinearLayout) findViewById(R.id.menu_disconnect);
        mDisconnectItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuActivity.this, LoginActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });
    }
}
