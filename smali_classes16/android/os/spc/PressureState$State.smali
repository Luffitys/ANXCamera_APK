.class public final enum Landroid/os/spc/PressureState$State;
.super Ljava/lang/Enum;
.source "PressureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/spc/PressureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/spc/PressureState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/spc/PressureState$State;

.field public static final enum HIGH_PRESSURE:Landroid/os/spc/PressureState$State;

.field public static final enum NON_PRESSURE:Landroid/os/spc/PressureState$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/os/spc/PressureState$State;

    const-string v1, "NON_PRESSURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/spc/PressureState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    new-instance v0, Landroid/os/spc/PressureState$State;

    const-string v1, "HIGH_PRESSURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/os/spc/PressureState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/spc/PressureState$State;->HIGH_PRESSURE:Landroid/os/spc/PressureState$State;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/spc/PressureState$State;

    sget-object v4, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Landroid/os/spc/PressureState$State;->$VALUES:[Landroid/os/spc/PressureState$State;

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

.method public static valueOf(Ljava/lang/String;)Landroid/os/spc/PressureState$State;
    .registers 2

    const-class v0, Landroid/os/spc/PressureState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/spc/PressureState$State;

    return-object v0
.end method

.method public static values()[Landroid/os/spc/PressureState$State;
    .registers 1

    sget-object v0, Landroid/os/spc/PressureState$State;->$VALUES:[Landroid/os/spc/PressureState$State;

    invoke-virtual {v0}, [Landroid/os/spc/PressureState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/spc/PressureState$State;

    return-object v0
.end method
