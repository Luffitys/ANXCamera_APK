.class public final enum Lmiui/app/transition/FragmentOptions$Type;
.super Ljava/lang/Enum;
.source "FragmentOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/transition/FragmentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/app/transition/FragmentOptions$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/transition/FragmentOptions$Type;

.field public static final enum EXIT_FADE:Lmiui/app/transition/FragmentOptions$Type;

.field public static final enum PHYSIC_FADE:Lmiui/app/transition/FragmentOptions$Type;

.field public static final enum SCALE_DOWN:Lmiui/app/transition/FragmentOptions$Type;

.field public static final enum SCALE_UP:Lmiui/app/transition/FragmentOptions$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lmiui/app/transition/FragmentOptions$Type;

    const-string v1, "SCALE_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/app/transition/FragmentOptions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/transition/FragmentOptions$Type;->SCALE_UP:Lmiui/app/transition/FragmentOptions$Type;

    new-instance v0, Lmiui/app/transition/FragmentOptions$Type;

    const-string v1, "SCALE_DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/app/transition/FragmentOptions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/transition/FragmentOptions$Type;->SCALE_DOWN:Lmiui/app/transition/FragmentOptions$Type;

    new-instance v0, Lmiui/app/transition/FragmentOptions$Type;

    const-string v1, "EXIT_FADE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/app/transition/FragmentOptions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/transition/FragmentOptions$Type;->EXIT_FADE:Lmiui/app/transition/FragmentOptions$Type;

    new-instance v0, Lmiui/app/transition/FragmentOptions$Type;

    const-string v1, "PHYSIC_FADE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/app/transition/FragmentOptions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/transition/FragmentOptions$Type;->PHYSIC_FADE:Lmiui/app/transition/FragmentOptions$Type;

    const/4 v1, 0x4

    new-array v1, v1, [Lmiui/app/transition/FragmentOptions$Type;

    sget-object v6, Lmiui/app/transition/FragmentOptions$Type;->SCALE_UP:Lmiui/app/transition/FragmentOptions$Type;

    aput-object v6, v1, v2

    sget-object v2, Lmiui/app/transition/FragmentOptions$Type;->SCALE_DOWN:Lmiui/app/transition/FragmentOptions$Type;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/app/transition/FragmentOptions$Type;->EXIT_FADE:Lmiui/app/transition/FragmentOptions$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lmiui/app/transition/FragmentOptions$Type;->$VALUES:[Lmiui/app/transition/FragmentOptions$Type;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/app/transition/FragmentOptions$Type;
    .registers 2

    const-class v0, Lmiui/app/transition/FragmentOptions$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/app/transition/FragmentOptions$Type;

    return-object v0
.end method

.method public static values()[Lmiui/app/transition/FragmentOptions$Type;
    .registers 1

    sget-object v0, Lmiui/app/transition/FragmentOptions$Type;->$VALUES:[Lmiui/app/transition/FragmentOptions$Type;

    invoke-virtual {v0}, [Lmiui/app/transition/FragmentOptions$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/transition/FragmentOptions$Type;

    return-object v0
.end method
