.class Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$100(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/MimojiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$100(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/MimojiInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mPackPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$100(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/MimojiInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mPackPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$000(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->filelistToMinojiInfo()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->onMimojiDeleted()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$202(Lcom/android/camera/fragment/mimoji/FragmentMimoji;I)I

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$300(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->updateSelect()V

    const-string v0, "mimoji_click_delete"

    const-string v1, "delete"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$400(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
