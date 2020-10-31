.class public final enum Landroid/net/IpConfiguration$IpAssignment;
.super Ljava/lang/Enum;
.source "IpConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAssignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/IpConfiguration$IpAssignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/IpConfiguration$IpAssignment;

.field public static final enum DHCP:Landroid/net/IpConfiguration$IpAssignment;

.field public static final enum STATIC:Landroid/net/IpConfiguration$IpAssignment;

.field public static final enum UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/net/IpConfiguration$IpAssignment;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/IpConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    new-instance v0, Landroid/net/IpConfiguration$IpAssignment;

    const-string v1, "DHCP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/net/IpConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    new-instance v0, Landroid/net/IpConfiguration$IpAssignment;

    const-string v1, "UNASSIGNED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/net/IpConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/IpConfiguration$IpAssignment;

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    aput-object v5, v1, v2

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroid/net/IpConfiguration$IpAssignment;->$VALUES:[Landroid/net/IpConfiguration$IpAssignment;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;
    .registers 2

    const-class v0, Landroid/net/IpConfiguration$IpAssignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public static values()[Landroid/net/IpConfiguration$IpAssignment;
    .registers 1

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->$VALUES:[Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0}, [Landroid/net/IpConfiguration$IpAssignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method
