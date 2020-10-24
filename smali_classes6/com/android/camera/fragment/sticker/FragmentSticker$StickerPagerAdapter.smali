.class Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source ""


# instance fields
.field private mFragmentList:Ljava/util/List;

.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/sticker/FragmentSticker;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p3, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;->mFragmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;->mFragmentList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method
