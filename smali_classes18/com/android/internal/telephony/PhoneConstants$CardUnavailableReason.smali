.class public final enum Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardUnavailableReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    const-string v1, "REASON_CARD_REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    const-string v1, "REASON_RADIO_UNAVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    const-string v1, "REASON_SIM_REFRESH_RESET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    return-object v0
.end method
