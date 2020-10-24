.class Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSelectType()I

    move-result p1

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->isColorSelected()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {v3}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$1000(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->isNeedUpdate(I)Z

    move-result p1

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {v3}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$900(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    move-result-object v3

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v1, v4, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->refreshData(Ljava/util/List;ZZ)V

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$1100(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->draw(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "OUTER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "INNER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$900(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->notifyThumbnailUpdate(III)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const/16 v0, 0xc8

    invoke-static {p1, v0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->getThumbnailBitmapFromData([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v4, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "config.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pic.png"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/FileUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$500(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$500(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  save path : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$600(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$700(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_3
    new-instance p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    invoke-direct {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;-><init>()V

    iput-object v4, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mThumbnailUrl:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiInfo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$800(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)I

    move-result p1

    if-eq p1, v3, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showEmoticon()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->goBack(ZZ)V

    :cond_6
    :goto_0
    return-void
.end method
