.class Landroid/inputmethodservice/InputMethodSwitchAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodSwitchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;,
        Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/view/inputmethod/InputMethodInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultInputMethod:Ljava/lang/String;

.field private mInputMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mResourceId:I

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mInputMethodList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mDefaultInputMethod:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodSwitchAdapter;)Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mClickListener:Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;

    return-object v0
.end method

.method private getImeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v0, 0x0

    if-nez p2, :cond_46

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mResourceId:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;-><init>(Landroid/inputmethodservice/InputMethodSwitchAdapter;)V

    const v3, 0x1109006a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    const v3, 0x1109006c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    const v3, 0x1109006b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->selectedImage:Landroid/widget/ImageView;

    const v3, 0x110900bb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_46
    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;

    :goto_4d
    iget-object v3, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    if-nez p1, :cond_53

    move v4, v0

    goto :goto_55

    :cond_53
    const/16 v4, 0x8

    :goto_55
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mInputMethodList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->getImeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mDefaultInputMethod:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11050057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->selectedImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ab

    :cond_93
    iget-object v0, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1105008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->selectedImage:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_ab
    iget-object v0, v2, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/inputmethodservice/InputMethodSwitchAdapter$1;

    invoke-direct {v4, p0, v3}, Landroid/inputmethodservice/InputMethodSwitchAdapter$1;-><init>(Landroid/inputmethodservice/InputMethodSwitchAdapter;Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setClickListener(Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter;->mClickListener:Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;

    return-void
.end method
