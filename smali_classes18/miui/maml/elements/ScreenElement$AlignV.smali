.class public final enum Lmiui/maml/elements/ScreenElement$AlignV;
.super Ljava/lang/Enum;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "AlignV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/elements/ScreenElement$AlignV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/ScreenElement$AlignV;

.field public static final enum BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

.field public static final enum CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

.field public static final enum TOP:Lmiui/maml/elements/ScreenElement$AlignV;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lmiui/maml/elements/ScreenElement$AlignV;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/ScreenElement$AlignV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    new-instance v0, Lmiui/maml/elements/ScreenElement$AlignV;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/ScreenElement$AlignV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    new-instance v0, Lmiui/maml/elements/ScreenElement$AlignV;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/elements/ScreenElement$AlignV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    const/4 v1, 0x3

    new-array v1, v1, [Lmiui/maml/elements/ScreenElement$AlignV;

    sget-object v5, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    aput-object v5, v1, v2

    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->$VALUES:[Lmiui/maml/elements/ScreenElement$AlignV;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement$AlignV;
    .registers 2

    const-class v0, Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement$AlignV;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/ScreenElement$AlignV;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->$VALUES:[Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v0}, [Lmiui/maml/elements/ScreenElement$AlignV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/ScreenElement$AlignV;

    return-object v0
.end method
