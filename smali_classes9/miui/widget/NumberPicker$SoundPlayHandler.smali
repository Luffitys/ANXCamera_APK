.class Lmiui/widget/NumberPicker$SoundPlayHandler;
.super Landroid/os/Handler;
.source ""


# static fields
.field private static final MSG_INIT:I = 0x0

.field private static final MSG_PLAY:I = 0x1

.field private static final MSG_RELEASE:I = 0x2

.field private static final sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>(Lmiui/widget/NumberPicker$1;)V

    sput-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->release(I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->play()V

    goto :goto_0

    :cond_2
    sget-object p0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->init(I)V

    :goto_0
    return-void
.end method

.method init(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method play()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method release(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
