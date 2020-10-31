.class Lmiui/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lmiui/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$100(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$200(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$200(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$300(Lmiui/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$100(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2c
    return-void
.end method
