.class public final enum Lcom/android/internal/telephony/OperatorInfo$State;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/OperatorInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "CURRENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "FORBIDDEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/telephony/OperatorInfo$State;

    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/OperatorInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method
