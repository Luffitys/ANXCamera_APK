.class public final enum Lcom/android/internal/telephony/PhoneConstants$DataState;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "DISCONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "SUSPENDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "DISCONNECTING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method
