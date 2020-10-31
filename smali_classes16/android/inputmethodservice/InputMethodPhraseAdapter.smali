.class Landroid/inputmethodservice/InputMethodPhraseAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodPhraseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mPhraseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/inputmethodservice/InputMethodService;",
            "Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mResourceId:I

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/inputmethodservice/InputMethodService;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_39

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mResourceId:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;-><init>(Landroid/inputmethodservice/InputMethodPhraseAdapter;)V

    const v3, 0x11090091

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    const v3, 0x1109008c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    const v3, 0x1109008d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_40

    :cond_39
    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;

    :goto_40
    iget-object v3, v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    if-nez p1, :cond_45

    goto :goto_47

    :cond_45
    const/16 v0, 0x8

    :goto_47
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;

    invoke-direct {v3, p0, p1}, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;-><init>(Landroid/inputmethodservice/InputMethodPhraseAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setPhraseList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->clear()V

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->notifyDataSetChanged()V

    return-void
.end method
