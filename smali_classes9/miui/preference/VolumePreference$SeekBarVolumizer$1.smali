.class Lmiui/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lmiui/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$100(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$200(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$200(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$300(Lmiui/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$100(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
