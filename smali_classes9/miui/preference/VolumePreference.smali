.class public Lmiui/preference/VolumePreference;
.super Lmiui/preference/SeekBarDialogPreference;
.source ""

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


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
    .locals 3

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
    .locals 2

    invoke-direct {p0, p1, p2}, Lmiui/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/internal/R$styleable;->VolumePreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiui/preference/VolumePreference;->VolumePreference_streamType:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cleanup()V
    .locals 5

    sget-object v0, Lmiui/preference/VolumePreference;->PreferenceManager_unregisterOnActivityStopListener:Lmiui/reflect/Method;

    const-class v1, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_1
    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stop()V

    iput-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    :cond_2
    return-void
.end method

.method private static getVolumePreferenceStreamType()I
    .locals 3

    :try_start_0
    const-string v0, "android.R.styleable"

    const-string v1, "VolumePreference_streamType"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$000(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    sget v0, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    new-instance v1, Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    sget-object v0, Lmiui/preference/VolumePreference;->PreferenceManager_registerOnActivityStopListener:Lmiui/reflect/Method;

    const-class v1, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    invoke-direct {p0}, Lmiui/preference/VolumePreference;->cleanup()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object p1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    const/16 v1, 0x18

    if-eq p2, v1, :cond_6

    const/16 v1, 0x19

    if-eq p2, v1, :cond_4

    const/16 v1, 0xa4

    if-eq p2, v1, :cond_2

    return p3

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->muteVolume()V

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_5

    iget-object p0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    iget-object p0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_7
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiui/preference/VolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lmiui/preference/VolumePreference$SavedState;

    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lmiui/preference/VolumePreference$SavedState;->getVolumeStore()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz p0, :cond_0

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lmiui/preference/VolumePreference$SavedState;

    invoke-direct {v1, v0}, Lmiui/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lmiui/preference/VolumePreference$SavedState;->getVolumeStore()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    :cond_1
    return-object v1
.end method

.method public setStreamType(I)V
    .locals 0

    iput p1, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    return-void
.end method
