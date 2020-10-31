.class Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;
.super Lmiui/telephony/TelephonyManager;
.source "TelephonyManagerAndroidImpl.java"


# instance fields
.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmiui/telephony/TelephonyManager;-><init>()V

    nop

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private static getSlotIdForSubscription(I)I
    .registers 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method private static getSubscriptionIdForSlot(I)I
    .registers 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    return v0
.end method

.method protected static logException(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "TelephonyAndroidImpl"

    const-string v1, "method reflection failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getCallState()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallStateForSlot(I)I
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSubscription(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivity()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSlot(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSubscription(I)I
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataActivityForSlot(I)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSlot(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSubscription(I)I
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_35

    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_35
    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeidForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    return-object v0
.end method

.method public getMiuiDeviceId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiLevel(Landroid/telephony/SignalStrength;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "getLevel"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return v0

    :catch_18
    move-exception v1

    invoke-static {v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->logException(Ljava/lang/Exception;)V

    return v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSlot(I)I
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSubscription(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getPhoneCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getPhoneType()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSlot(I)I
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSubscription(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSimStateForSlot(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSimStateForSubscription(I)I
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSmallDeviceId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCapable()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "isVoiceCapable"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v1

    invoke-static {v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->logException(Ljava/lang/Exception;)V

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .registers 5

    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .registers 4

    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
