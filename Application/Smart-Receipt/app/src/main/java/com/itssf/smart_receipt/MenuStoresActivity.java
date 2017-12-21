package com.itssf.smart_receipt;

import android.app.ActionBar;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;

public class MenuStoresActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_stores);
        try {
            ActionBar actionBar = getActionBar();
            actionBar.setDisplayHomeAsUpEnabled(true);
        } catch (Exception e) {
            System.out.println(e);
        }
        // Map
        LinearLayout mStoresItem = (LinearLayout) findViewById(R.id.menu_stores_proximity);
        mStoresItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MenuStoresActivity.this, StoresMapsProximityActivity.class);

                /** purger les SESSIONS ICI**/
                //intent.putExtra("EXTRA_ID_USER", m_idUser);
                startActivity(intent);
                finish();
            }
        });
    }
    public boolean onOptionsItemSelected(MenuItem item){
        Intent intent = new Intent(getApplicationContext(), MenuActivity.class);
        startActivityForResult(intent, 0);
        return true;
    }
}
