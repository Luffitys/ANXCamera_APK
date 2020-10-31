.class public Lmiui/app/ProgressDialog;
.super Lmiui/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressPercentView:Landroid/widget/TextView;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method static synthetic access$000(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private initFormats()V
    .registers 3

    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lmiui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onProgressChanged()V
    .registers 3

    iget v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_15
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiui/app/ProgressDialog;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;
    .registers 7

    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p4}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    :cond_9
    iget v0, p0, Lmiui/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    :cond_9
    iget v0, p0, Lmiui/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    :cond_9
    iget v0, p0, Lmiui/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_10

    :cond_b
    iget v0, p0, Lmiui/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->mIncrementBy:I

    :goto_10
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_10

    :cond_b
    iget v0, p0, Lmiui/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->mIncrementSecondaryBy:I

    :goto_10
    return-void
.end method

.method public isIndeterminate()Z
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    :cond_9
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iget v2, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3a

    new-instance v2, Lmiui/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Lmiui/app/ProgressDialog$1;-><init>(Lmiui/app/ProgressDialog;)V

    iput-object v2, p0, Lmiui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    sget v2, Lcom/miui/internal/R$styleable;->AlertDialog_horizontalProgressLayout:I

    sget v4, Lcom/miui/internal/R$layout;->alert_dialog_progress:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$id;->progress_percent:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    goto :goto_46

    :cond_3a
    sget v2, Lcom/miui/internal/R$styleable;->AlertDialog_progressLayout:I

    sget v4, Lcom/miui/internal/R$layout;->progress_dialog:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_46
    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    sget v3, Lmiui/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lmiui/app/ProgressDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v3, p0, Lmiui/app/ProgressDialog;->mMax:I

    if-lez v3, :cond_68

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setMax(I)V

    :cond_68
    iget v3, p0, Lmiui/app/ProgressDialog;->mProgressVal:I

    if-lez v3, :cond_6f

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_6f
    iget v3, p0, Lmiui/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_76

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setSecondaryProgress(I)V

    :cond_76
    iget v3, p0, Lmiui/app/ProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_7d

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->incrementProgressBy(I)V

    :cond_7d
    iget v3, p0, Lmiui/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_84

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    :cond_84
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8b

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8b
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_92

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_92
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_99

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_99
    iget-boolean v3, p0, Lmiui/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lmiui/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lmiui/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_a

    :cond_8
    iput-boolean p1, p0, Lmiui/app/ProgressDialog;->mIndeterminate:Z

    :goto_a
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_8
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_a
    return-void
.end method

.method public setMax(I)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_d

    :cond_b
    iput p1, p0, Lmiui/app/ProgressDialog;->mMax:I

    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_11

    iget v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iput-object p1, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :cond_b
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_11
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_13
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_f

    :cond_d
    iput p1, p0, Lmiui/app/ProgressDialog;->mProgressVal:I

    :goto_f
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_8
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_a
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    iput p1, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_d

    :cond_b
    iput p1, p0, Lmiui/app/ProgressDialog;->mSecondaryProgressVal:I

    :goto_d
    return-void
.end method
