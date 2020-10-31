.class Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;
.super Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;
.source "SubscriptionManagerAndroidImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultSubId()I
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getDefaultSubscriptionId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return v0

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    invoke-super {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->getDefaultSubId()I

    move-result v0

    return v0
.end method
