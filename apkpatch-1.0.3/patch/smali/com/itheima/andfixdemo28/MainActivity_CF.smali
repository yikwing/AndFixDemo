.class public Lcom/itheima/andfixdemo28/MainActivity_CF;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private mTvResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        method = "onCreate"
        clazz = "com.itheima.andfixdemo28.MainActivity"
    .end annotation

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/itheima/andfixdemo28/MainActivity_CF;->setContentView(I)V

    .line 17
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/itheima/andfixdemo28/MainActivity_CF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itheima/andfixdemo28/MainActivity_CF;->mTvResult:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/itheima/andfixdemo28/MainActivity_CF;->mTvResult:Landroid/widget/TextView;

    const-string v1, "\u89e3\u51b3Bug"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 28
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 29
    return-void
.end method
