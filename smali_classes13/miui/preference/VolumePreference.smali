.class public Lmiui/preference/VolumePreference;
.super Lmiui/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/preference/VolumePreference$SeekBarVolumizer;,
        Lmiui/preference/VolumePreference$SavedState;,
        Lmiui/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final PreferenceManager_registerOnActivityStopListener:Lmiui/reflect/Method;

.field private static final PreferenceManager_unregisterOnActivityStopListener:Lmiui/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "VolumePreference"

.field private static final VolumePreference_streamType:I


# instance fields
.field private mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "registerOnActivityStopListener"

    const-string v2, "(Landroid/preference/PreferenceManager$OnActivityStopListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/preference/VolumePreference;->PreferenceManager_registerOnActivityStopListener:Lmiui/reflect/Method;

    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "unregisterOnActivityStopListener"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/preference/VolumePreference;->PreferenceManager_unregisterOnActivityStopListener:Lmiui/reflect/Method;

    invoke-static {}, Lmiui/preference/VolumePreference;->getVolumePreferenceStreamType()I

    move-result v0

    sput v0, Lmiui/preference/VolumePreference;->VolumePreference_streamType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lmiui/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/internal/R$styleable;->VolumePreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lmiui/preference/VolumePreference;->VolumePreference_streamType:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cleanup()V
    .registers 6

    sget-object v0, Lmiui/preference/VolumePreference;->PreferenceManager_unregisterOnActivityStopListener:Lmiui/reflect/Method;

    const-class v1, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_35
    iget-object v3, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_3a
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stop()V

    iput-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    :cond_41
    return-void
.end method

.method private static getVolumePreferenceStreamType()I
    .registers 3

    :try_start_0
    const-string v0, "android.R.styleable"

    const-string v1, "VolumePreference_streamType"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onActivityStop()V
    .registers 2

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_7

    # invokes: Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V
    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$000(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    :cond_7
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 9

    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    sget v0, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    new-instance v1, Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    sget-object v1, Lmiui/preference/VolumePreference;->PreferenceManager_registerOnActivityStopListener:Lmiui/reflect/Method;

    const-class v2, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_c

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_c
    invoke-direct {p0}, Lmiui/preference/VolumePreference;->cleanup()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    const/16 v3, 0x18

    if-eq p2, v3, :cond_2e

    const/16 v3, 0x19

    if-eq p2, v3, :cond_25

    const/16 v3, 0xa4

    if-eq p2, v3, :cond_1d

    return v2

    :cond_1d
    if-eqz v0, :cond_24

    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->muteVolume()V

    :cond_24
    return v1

    :cond_25
    if-eqz v0, :cond_2d

    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_2d
    return v1

    :cond_2e
    if-eqz v0, :cond_35

    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_35
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiui/preference/VolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_25

    :cond_f
    move-object v0, p1

    check-cast v0, Lmiui/preference/VolumePreference$SavedState;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SavedState;->getVolumeStore()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    :cond_24
    return-void

    :cond_25
    :goto_25
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .registers 3

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_9

    if-eq p1, v0, :cond_9

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_9
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Lmiui/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Lmiui/preference/VolumePreference$SavedState;

    invoke-direct {v1, v0}, Lmiui/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lmiui/preference/VolumePreference$SavedState;->getVolumeStore()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    :cond_1b
    return-object v1
.end method

.method public setStreamType(I)V
    .registers 2

    iput p1, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    return-void
.end method
