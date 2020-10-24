.class public Lcom/android/camera/preferences/MoreModeStylePreference;
.super Landroidx/preference/Preference;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPopupCover:Landroid/view/View;

.field private mPopupRadioBtn:Landroid/widget/RadioButton;

.field private mPopupVideoView:Landroid/widget/VideoView;

.field private mTabCover:Landroid/view/View;

.field private mTabRadioBtn:Landroid/widget/RadioButton;

.field private mTabVideoView:Landroid/widget/VideoView;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/preferences/MoreModeStylePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/preferences/MoreModeStylePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic OooO00o(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setAlpha(F)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic OooO0O0(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    new-instance v0, Lcom/android/camera/preferences/OooO0OO;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/preferences/OooO0OO;-><init>(Landroid/widget/VideoView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    new-instance p0, Lcom/android/camera/preferences/OooO0Oo;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/OooO0Oo;-><init>(Landroid/widget/VideoView;Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private preparedVideos()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isNightUiMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabCover:Landroid/view/View;

    const v2, 0x7f0f0021

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/preferences/MoreModeStylePreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupCover:Landroid/view/View;

    const v2, 0x7f0f001f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabCover:Landroid/view/View;

    const v2, 0x7f0f0020

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/preferences/MoreModeStylePreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupCover:Landroid/view/View;

    const v2, 0x7f0f001e

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/preferences/MoreModeStylePreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f090273

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    const v0, 0x7f090270

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    const v0, 0x7f090272

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabRadioBtn:Landroid/widget/RadioButton;

    const v0, 0x7f09026f

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupRadioBtn:Landroid/widget/RadioButton;

    const v0, 0x7f09030d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabCover:Landroid/view/View;

    const v0, 0x7f090292

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupCover:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09026e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090271

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/preferences/MoreModeStylePreference;->preparedVideos()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result p1

    iput p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    sget-object p1, Lcom/android/camera/preferences/MoreModeStylePreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f09026f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090272

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupRadioBtn:Landroid/widget/RadioButton;

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iput v1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabRadioBtn:Landroid/widget/RadioButton;

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iput v2, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    :goto_0
    iget p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    iget p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setMoreModeStyle(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09026e

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f090271

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iput v2, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    iput v1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    :goto_0
    iget p1, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    iget p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setMoreModeStyle(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/android/camera/preferences/MoreModeStylePreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabCover:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupCover:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/android/camera/preferences/MoreModeStylePreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/preferences/MoreModeStylePreference;->preparedVideos()V

    iget v0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mValue:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mTabVideoView:Landroid/widget/VideoView;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/preferences/MoreModeStylePreference;->mPopupVideoView:Landroid/widget/VideoView;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
