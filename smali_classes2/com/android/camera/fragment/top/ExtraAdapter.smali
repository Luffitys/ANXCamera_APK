.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field private mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mDegree:I

.field private mImageNormalColor:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedColor:I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTAG:I

.field private mTextNormalColor:I

.field private mUnableClickColor:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    const p1, -0x4c000001

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    const p1, -0x141415

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    const p1, -0xe66d19

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    const p1, 0x47ffffff

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mUnableClickColor:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 13

    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result p2

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xd1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v1, :cond_b

    const/16 v1, 0xd2

    if-eq p2, v1, :cond_a

    const/16 v1, 0xd5

    if-eq p2, v1, :cond_9

    const/16 v1, 0xd6

    if-eq p2, v1, :cond_8

    const/16 v1, 0xe1

    if-eq p2, v1, :cond_7

    const/16 v1, 0xe2

    const/16 v6, 0xa0

    if-eq p2, v1, :cond_6

    const/16 v1, 0xfc

    if-eq p2, v1, :cond_5

    const/16 v1, 0xfd

    if-eq p2, v1, :cond_4

    const/16 v1, 0xff

    if-eq p2, v1, :cond_3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    move v6, v2

    move v7, v6

    :goto_0
    move v0, v3

    move v1, v0

    :goto_1
    move v8, v4

    goto/16 :goto_9

    :pswitch_0
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800ac

    const v1, 0x7f0f02ff

    goto/16 :goto_6

    :cond_0
    const v0, 0x7f0800ab

    const v1, 0x7f0f01c6

    goto/16 :goto_6

    :pswitch_1
    const v0, 0x7f0800cc

    const v1, 0x7f0f00a7

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_super_resolution_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_2

    :pswitch_2
    const v0, 0x7f0800b0

    const v1, 0x7f0f0208

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v6

    goto/16 :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isSwitchOn(I)Z

    move-result v6

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v7

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_7

    :pswitch_4
    const v0, 0x7f0800b5

    const v1, 0x7f0f02a7

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_show_gender_age_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_2

    :pswitch_5
    const v1, 0x7f0f027c

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v6, 0x7f080150

    goto/16 :goto_3

    :cond_1
    const v6, 0x7f08014f

    goto/16 :goto_3

    :pswitch_6
    const v0, 0x7f0800bc

    const v1, 0x7f0f0267

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_magic_mirror_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :pswitch_7
    const v0, 0x7f0800b6

    const v1, 0x7f0f00a0

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_groupshot_mode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :pswitch_8
    const v0, 0x7f0800be

    const v1, 0x7f0f00a3

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_scenemode_setting_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :pswitch_9
    const v0, 0x7f0800b2

    const v1, 0x7f0f0349

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v6

    goto :goto_2

    :pswitch_a
    const v0, 0x7f0800bb

    const v1, 0x7f0f00a2

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_ubifocus_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :pswitch_b
    const v0, 0x7f0800b8

    const v1, 0x7f0f00a1

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_hand_night_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :pswitch_c
    const v0, 0x7f0800c9

    const v1, 0x7f0f00a6

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_gradienter_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    :goto_2
    move v7, v0

    goto/16 :goto_7

    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_camera_tilt_shift_mode"

    invoke-virtual {v1, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v0

    move v6, v1

    move v8, v4

    move v1, v7

    move v7, v0

    goto :goto_5

    :cond_2
    const v0, 0x7f0f00a8

    const v6, 0x7f0800cd

    move v8, v4

    move v7, v6

    move v6, v1

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResIcon(Z)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->isEnabled(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->getResIcon(Z)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->getResText()I

    move-result v1

    :goto_3
    move v8, v4

    move v7, v6

    move v6, v0

    goto :goto_5

    :cond_5
    const v0, 0x7f0800b7

    const v1, 0x7f0f0100

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v7, "pref_hand_gesture"

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    move v6, v1

    move v8, v4

    :goto_4
    move v1, v0

    :goto_5
    move v0, v3

    goto/16 :goto_9

    :cond_7
    const v0, 0x7f0800b1

    const v1, 0x7f0f00a4

    :goto_6
    move v7, v0

    move v6, v2

    :goto_7
    move v0, v3

    goto/16 :goto_1

    :cond_8
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDisplayTitleString()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->disableUpdate()Z

    move-result v8

    xor-int/2addr v8, v4

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    goto :goto_8

    :cond_9
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getDisplayTitleString()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->disableUpdate()Z

    move-result v8

    xor-int/2addr v8, v4

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    :goto_8
    move v1, v7

    move v7, v6

    move v6, v2

    move v2, v4

    goto :goto_9

    :cond_a
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDisplayTitleString()I

    move-result v7

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    move v8, v4

    move v1, v7

    move v7, v6

    move v6, v2

    move v2, v8

    goto :goto_9

    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getMenuDrawable()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getMenuString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    move v6, v0

    move v7, v1

    goto/16 :goto_0

    :goto_9
    const v9, 0x7f090051

    invoke-virtual {p1, v9}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090050

    invoke-virtual {p1, v10}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/ColorImageView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eq v0, v3, :cond_c

    iget-object v12, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v6, :cond_d

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_d
    if-nez v2, :cond_e

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_a
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setSelected(Z)V

    if-eq v1, v3, :cond_f

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    :cond_f
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v8, :cond_11

    if-eqz v6, :cond_10

    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    goto :goto_c

    :cond_10
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    goto :goto_c

    :cond_11
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mUnableClickColor:I

    :goto_c
    if-eqz v6, :cond_12

    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    goto :goto_d

    :cond_12
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    :goto_d
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/camera/Util;->isSetContentDesc()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    if-ne v0, p2, :cond_14

    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/top/ExtraAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/top/ExtraAdapter$1;-><init>(Lcom/android/camera/fragment/top/ExtraAdapter;Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0xe4
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz p0, :cond_0

    int-to-float p0, p0

    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_0
    new-instance p0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const p0, 0x7f090050

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return p1

    :cond_2
    const p2, 0x3f6e147b    # 0.93f

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return p1
.end method

.method public setNewDegree(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method

.method public setOnClictTag(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    return-void
.end method
