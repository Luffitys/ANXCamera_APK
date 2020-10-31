.class public final enum Landroid/security/KeyStore$State;
.super Ljava/lang/Enum;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/security/KeyStore$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/security/KeyStore$State;

.field public static final enum LOCKED:Landroid/security/KeyStore$State;

.field public static final enum UNINITIALIZED:Landroid/security/KeyStore$State;

.field public static final enum UNLOCKED:Landroid/security/KeyStore$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/security/KeyStore$State;

    const-string v1, "UNLOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    new-instance v0, Landroid/security/KeyStore$State;

    const-string v1, "LOCKED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/security/KeyStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    new-instance v0, Landroid/security/KeyStore$State;

    const-string v1, "UNINITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/security/KeyStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/security/KeyStore$State;

    sget-object v5, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    aput-object v5, v1, v2

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroid/security/KeyStore$State;->$VALUES:[Landroid/security/KeyStore$State;

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

.method public static valueOf(Ljava/lang/String;)Landroid/security/KeyStore$State;
    .registers 2

    const-class v0, Landroid/security/KeyStore$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/security/KeyStore$State;

    return-object v0
.end method

.method public static values()[Landroid/security/KeyStore$State;
    .registers 1

    sget-object v0, Landroid/security/KeyStore$State;->$VALUES:[Landroid/security/KeyStore$State;

    invoke-virtual {v0}, [Landroid/security/KeyStore$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/security/KeyStore$State;

    return-object v0
.end method
