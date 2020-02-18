.class public final enum Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
.super Ljava/lang/Enum;
.source "MonitorData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/Model/MonitorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RUN_HORSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const/4 v3, 0x2

    const-string v4, "P2P_INIT"

    invoke-direct {v0, v4, v2, v3}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const/4 v4, 0x3

    const-string v5, "CONF_INIT"

    invoke-direct {v0, v5, v3, v4}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const/4 v5, 0x4

    const-string v6, "CRASH"

    invoke-direct {v0, v6, v4, v5}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-array v0, v5, [Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    sget-object v5, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v5, v0, v1

    sget-object v1, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->$VALUES:[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->type:I

    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object p0

    :cond_1
    sget-object p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object p0

    :cond_2
    sget-object p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object p0

    :cond_3
    sget-object p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
    .locals 1

    const-class v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
    .locals 1

    sget-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->$VALUES:[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    invoke-virtual {v0}, [Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->type:I

    return p0
.end method
