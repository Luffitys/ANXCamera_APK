.class Lmiui/widget/NumberPicker$SoundPlayHandler;
.super Landroid/os/Handler;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPlayHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
    }
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x0

.field private static final MSG_PLAY:I = 0x1

.field private static final MSG_RELEASE:I = 0x2

.field private static final sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>(Lmiui/widget/NumberPicker$1;)V

    sput-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_24

    :cond_e
    sget-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->release(I)V

    goto :goto_24

    :cond_16
    sget-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->play()V

    goto :goto_24

    :cond_1c
    sget-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->init(I)V

    nop

    :goto_24
    return-void
.end method

.method init(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method play()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method release(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->removeMessages(I)V

    return-void
.end method
