.class final enum Lcom/android/camera/fragment/FragmentMainContent$CoverState;
.super Ljava/lang/Enum;
.source "FragmentMainContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentMainContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CoverState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/fragment/FragmentMainContent$CoverState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum BOTTOM:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum LEFT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum LR:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum NONE:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum RIGHT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum TB:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum TOP:Lcom/android/camera/fragment/FragmentMainContent$CoverState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->NONE:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v2, 0x1

    const-string v3, "TB"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TB:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v3, 0x2

    const-string v4, "LR"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LR:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v4, 0x3

    const-string v5, "TOP"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TOP:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v5, 0x4

    const-string v6, "BOTTOM"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->BOTTOM:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v6, 0x5

    const-string v7, "LEFT"

    invoke-direct {v0, v7, v6}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LEFT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v7, 0x6

    const-string v8, "RIGHT"

    invoke-direct {v0, v8, v7}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->RIGHT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    sget-object v8, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->NONE:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v8, v0, v1

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TB:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LR:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TOP:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->BOTTOM:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LEFT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->RIGHT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->$VALUES:[Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/FragmentMainContent$CoverState;
    .locals 1

    const-class v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/fragment/FragmentMainContent$CoverState;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->$VALUES:[Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    invoke-virtual {v0}, [Lcom/android/camera/fragment/FragmentMainContent$CoverState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    return-object v0
.end method
