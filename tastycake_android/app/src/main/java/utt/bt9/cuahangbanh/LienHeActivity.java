package utt.bt9.cuahangbanh;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class LienHeActivity extends AppCompatActivity {
    Toolbar toolbarthongtin1;
    LinearLayout linearLayout;
    TextView tv1 , tv2,tv3 ,tv4;
    ImageView iv1,iv2,iv3,iv4,iv5,iv6,iv7;


    public Toolbar getToolbarthongtin1() {
        return toolbarthongtin1;
    }

    public void setToolbarthongtin1(Toolbar toolbarthongtin1) {
        this.toolbarthongtin1 = toolbarthongtin1;
    }

    public LinearLayout getLinearLayout() {
        linearLayout.setOnScrollChangeListener(new View.OnScrollChangeListener() {
            @Override
            public void onScrollChange(View v, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                fileList();
            }
        });
        return linearLayout;
    }

    public void setLinearLayout(LinearLayout linearLayout) {
        this.linearLayout = linearLayout;
    }

    public TextView getTv1() {
        return tv1;
    }

    public void setTv1(TextView tv1) {
        this.tv1 = tv1;
    }

    public TextView getTv2() {
        return tv2;
    }

    public void setTv2(TextView tv2) {
        this.tv2 = tv2;
    }

    public TextView getTv3() {
        return tv3;
    }

    public void setTv3(TextView tv3) {
        this.tv3 = tv3;
    }

    public TextView getTv4() {
        return tv4;
    }

    public void setTv4(TextView tv4) {
        this.tv4 = tv4;
    }

    public ImageView getIv1() {
        return iv1;
    }

    public void setIv1(ImageView iv1) {
        this.iv1 = iv1;
    }

    public ImageView getIv2() {
        return iv2;
    }

    public void setIv2(ImageView iv2) {
        this.iv2 = iv2;
    }

    public ImageView getIv3() {
        return iv3;
    }

    public void setIv3(ImageView iv3) {
        this.iv3 = iv3;
    }

    public ImageView getIv4() {
        return iv4;
    }

    public void setIv4(ImageView iv4) {
        this.iv4 = iv4;
    }

    public ImageView getIv5() {
        return iv5;
    }

    public void setIv5(ImageView iv5) {
        this.iv5 = iv5;
    }

    public ImageView getIv6() {
        return iv6;
    }

    public void setIv6(ImageView iv6) {
        this.iv6 = iv6;
    }

    public ImageView getIv7() {
        return iv7;
    }

    public void setIv7(ImageView iv7) {
        this.iv7 = iv7;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lien_he);
        toolbarthongtin1 = findViewById(R.id.toobarthongtin2);
        ActionToolbar();
        AX();

    }

    private void AX() {
        tv1 = findViewById(R.id.tv1);
        tv2 = findViewById(R.id.tv2);
        tv3 = findViewById(R.id.tv3);
        tv4 = findViewById(R.id.tv4);
        iv1 = findViewById(R.id.iv1);
        iv2 = findViewById(R.id.iv2);
        iv3 = findViewById(R.id.iv3);
        iv4 = findViewById(R.id.iv4);
        iv5 = findViewById(R.id.iv5);
        iv6 = findViewById(R.id.iv6);
        iv7 = findViewById(R.id.iv7);
        linearLayout = findViewById(R.id.lo1);


    }

    private void ActionToolbar() {
        setSupportActionBar(toolbarthongtin1);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbarthongtin1.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }
}