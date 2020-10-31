.class public final enum Landroid/net/LinkProperties$ProvisioningChange;
.super Ljava/lang/Enum;
.source "LinkProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProvisioningChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/LinkProperties$ProvisioningChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "STILL_NOT_PROVISIONED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "LOST_PROVISIONING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "GAINED_PROVISIONING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "STILL_PROVISIONED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/net/LinkProperties$ProvisioningChange;

    sget-object v6, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    aput-object v6, v1, v2

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    aput-object v2, v1, v3

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroid/net/LinkProperties$ProvisioningChange;->$VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 2

    const-class v0, Landroid/net/LinkProperties$ProvisioningChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0
.end method

.method public static values()[Landroid/net/LinkProperties$ProvisioningChange;
    .registers 1

    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->$VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v0}, [Landroid/net/LinkProperties$ProvisioningChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0
.end method
