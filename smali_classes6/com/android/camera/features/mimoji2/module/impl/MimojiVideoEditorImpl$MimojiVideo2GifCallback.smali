.class Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# instance fields
.field private count:I

.field private index:I

.field final synthetic this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V

    return-void
.end method


# virtual methods
.method public OnConvertProgress(I)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    iget v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->count:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfa

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$302(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Z)Z

    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->coverEmoticonSuccess()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void video2gif[]  Video  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " convert GIF progress : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->count:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    return p0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->count:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    return-void
.end method
