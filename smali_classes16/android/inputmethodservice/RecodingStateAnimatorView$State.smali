.class public final enum Landroid/inputmethodservice/RecodingStateAnimatorView$State;
.super Ljava/lang/Enum;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/inputmethodservice/RecodingStateAnimatorView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field public static final enum RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field public static final enum RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const-string v1, "RECORDING_NO_VOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    new-instance v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const-string v1, "RECORDING_HAS_VOICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/inputmethodservice/RecodingStateAnimatorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v4, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->$VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

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

.method public static valueOf(Ljava/lang/String;)Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .registers 2

    const-class v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public static values()[Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->$VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-virtual {v0}, [Landroid/inputmethodservice/RecodingStateAnimatorView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method
