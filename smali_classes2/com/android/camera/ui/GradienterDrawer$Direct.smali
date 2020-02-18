.class final enum Lcom/android/camera/ui/GradienterDrawer$Direct;
.super Ljava/lang/Enum;
.source "GradienterDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GradienterDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direct"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/ui/GradienterDrawer$Direct;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/4 v2, 0x1

    const-string v3, "TOP"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/4 v3, 0x2

    const-string v4, "BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/4 v4, 0x3

    const-string v5, "LEFT"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/4 v5, 0x4

    const-string v6, "RIGHT"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v6, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->$VALUES:[Lcom/android/camera/ui/GradienterDrawer$Direct;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/GradienterDrawer$Direct;
    .locals 1

    const-class v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/ui/GradienterDrawer$Direct;
    .locals 1

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->$VALUES:[Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v0}, [Lcom/android/camera/ui/GradienterDrawer$Direct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-object v0
.end method
