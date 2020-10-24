.class Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$2;->this$0:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/camera/fragment/fullscreen/ShareInfo;Lcom/android/camera/fragment/fullscreen/ShareInfo;)I
    .locals 0

    iget p0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    iget p1, p2, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    check-cast p2, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$2;->compare(Lcom/android/camera/fragment/fullscreen/ShareInfo;Lcom/android/camera/fragment/fullscreen/ShareInfo;)I

    move-result p0

    return p0
.end method
