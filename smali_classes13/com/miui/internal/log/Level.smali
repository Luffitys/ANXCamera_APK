.class public final enum Lcom/miui/internal/log/Level;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/log/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/log/Level;

.field public static final enum DEBUG:Lcom/miui/internal/log/Level;

.field public static final enum ERROR:Lcom/miui/internal/log/Level;

.field public static final enum FATAL:Lcom/miui/internal/log/Level;

.field public static final enum INFO:Lcom/miui/internal/log/Level;

.field public static final enum VERBOSE:Lcom/miui/internal/log/Level;

.field public static final enum WARNING:Lcom/miui/internal/log/Level;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/miui/internal/log/Level;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    new-instance v0, Lcom/miui/internal/log/Level;

    const-string v1, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    new-instance v0, Lcom/miui/internal/log/Level;

    const-string v1, "INFO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    new-instance v0, Lcom/miui/internal/log/Level;

    const-string v1, "WARNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/internal/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    new-instance v0, Lcom/miui/internal/log/Level;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/internal/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    new-instance v0, Lcom/miui/internal/log/Level;

    const-string v1, "FATAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/internal/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/miui/internal/log/Level;

    sget-object v8, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    aput-object v8, v1, v2

    sget-object v2, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    aput-object v2, v1, v3

    sget-object v2, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    aput-object v2, v1, v4

    sget-object v2, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    aput-object v2, v1, v5

    sget-object v2, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/miui/internal/log/Level;->$VALUES:[Lcom/miui/internal/log/Level;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/log/Level;
    .registers 2

    const-class v0, Lcom/miui/internal/log/Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/Level;

    return-object v0
.end method

.method public static values()[Lcom/miui/internal/log/Level;
    .registers 1

    sget-object v0, Lcom/miui/internal/log/Level;->$VALUES:[Lcom/miui/internal/log/Level;

    invoke-virtual {v0}, [Lcom/miui/internal/log/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/log/Level;

    return-object v0
.end method
