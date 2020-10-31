.class Landroid/inputmethodservice/InputMethodClipboardAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodClipboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/inputmethodservice/ClipboardContentModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputClipboardAdapter"


# instance fields
.field private mClipClearBtn:Landroid/widget/LinearLayout;

.field private mClipboardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIsLeft:Z

.field private mParentView:Landroid/view/View;

.field private mResourceId:I

.field private mTipsNeedShow:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;ILjava/util/ArrayList;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;ZZLandroid/widget/LinearLayout;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;",
            "Landroid/inputmethodservice/InputMethodService;",
            "Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;",
            "ZZ",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mResourceId:I

    iput-object p5, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    iput-boolean p7, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    iput-boolean p8, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mIsLeft:Z

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mParentView:Landroid/view/View;

    iput-object p9, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipClearBtn:Landroid/widget/LinearLayout;

    iput-object p6, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodService;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mIsLeft:Z

    return v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipClearBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v0, 0x0

    if-nez p2, :cond_65

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mResourceId:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;)V

    const v3, 0x11090044

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    const v3, 0x11090037

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreBtn:Landroid/widget/LinearLayout;

    const v3, 0x11090039

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    const v3, 0x11090036

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreImage:Landroid/widget/ImageView;

    const v3, 0x110900d7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v3, 0x11090047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x11090034

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_65
    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    :goto_6c
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    const/16 v4, 0x8

    if-nez v3, :cond_7c

    iget-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    if-nez p1, :cond_78

    move v5, v0

    goto :goto_79

    :cond_78
    move v5, v4

    :goto_79
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7c
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v3}, Landroid/inputmethodservice/ClipboardContentModel;->getType()I

    move-result v5

    iget-object v6, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v6, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz v5, :cond_e8

    if-eq v5, v7, :cond_da

    const/4 v0, 0x2

    if-eq v5, v0, :cond_c7

    const/4 v0, 0x3

    if-eq v5, v0, :cond_b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid clip type : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "InputClipboardAdapter"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    :cond_b4
    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v4, 0x11070100

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    invoke-direct {v4, p0, v3}, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/ClipboardContentModel;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ee

    :cond_c7
    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v4, 0x110700fe

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;

    invoke-direct {v4, p0, v3}, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/ClipboardContentModel;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ee

    :cond_da
    iget-object v4, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v4, 0x110700f0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_ee

    :cond_e8
    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    nop

    :goto_ee
    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreBtn:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;

    invoke-direct {v4, p0, v2, v3, p1}, Landroid/inputmethodservice/InputMethodClipboardAdapter$3;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;Landroid/inputmethodservice/ClipboardContentModel;I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;

    invoke-direct {v4, p0, v3}, Landroid/inputmethodservice/InputMethodClipboardAdapter$4;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/ClipboardContentModel;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setClipboardList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->clear()V

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTipsNeedShowFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    return-void
.end method
