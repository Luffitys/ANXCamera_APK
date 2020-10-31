.class public Lmiui/widget/PasswordWidgetManager;
.super Lmiui/widget/StateEditText$WidgetManager;
.source "PasswordWidgetManager.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mIsChecked:Z

.field private mMaster:Lmiui/widget/StateEditText;

.field private mWidgetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/widget/StateEditText$WidgetManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    sget v0, Lcom/miui/internal/R$attr;->visibilityIcon:I

    invoke-static {p1, v0}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getWidgetDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public onAttached(Lmiui/widget/StateEditText;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/PasswordWidgetManager;->mMaster:Lmiui/widget/StateEditText;

    return-void
.end method

.method public onWidgetClick(I)V
    .registers 6

    iget-boolean v0, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    iget-object v0, p0, Lmiui/widget/PasswordWidgetManager;->mMaster:Lmiui/widget/StateEditText;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lmiui/widget/StateEditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/PasswordWidgetManager;->mMaster:Lmiui/widget/StateEditText;

    invoke-virtual {v1}, Lmiui/widget/StateEditText;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/PasswordWidgetManager;->mMaster:Lmiui/widget/StateEditText;

    iget-boolean v3, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v3, :cond_1f

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    goto :goto_23

    :cond_1f
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v3}, Lmiui/widget/StateEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lmiui/widget/PasswordWidgetManager;->mMaster:Lmiui/widget/StateEditText;

    invoke-virtual {v2, v0, v1}, Lmiui/widget/StateEditText;->setSelection(II)V

    :cond_2b
    iget-object v0, p0, Lmiui/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v1, :cond_34

    sget-object v1, Lmiui/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    goto :goto_37

    :cond_34
    const/4 v1, 0x0

    new-array v1, v1, [I

    :goto_37
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method
