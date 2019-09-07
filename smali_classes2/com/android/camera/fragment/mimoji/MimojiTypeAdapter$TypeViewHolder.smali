.class public Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;
.super Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;
.source "MimojiTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder<",
        "Lcom/android/camera/fragment/mimoji/MimojiTypeBean;",
        ">;"
    }
.end annotation


# instance fields
.field private typeView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;->typeView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getTypeView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;->typeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public setData(Lcom/android/camera/fragment/mimoji/MimojiTypeBean;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;->getASAvatarConfigType()Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->replaceTabTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;->typeView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;->typeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getAlpha()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;->setSelectState(Landroid/widget/TextView;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;->typeView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder$1;-><init>(Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setData(Lcom/android/camera/ui/autoselectview/SelectItemBean;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;->setData(Lcom/android/camera/fragment/mimoji/MimojiTypeBean;I)V

    return-void
.end method
