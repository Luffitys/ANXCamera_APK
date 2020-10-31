.class public final enum Lcom/android/internal/telephony/PhoneConstants$State;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum RINGING:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    const-string v1, "RINGING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    const-string v1, "OFFHOOK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method
