.class final enum Lcom/miui/internal/yellowpage/ImageLoader$State;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/yellowpage/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/yellowpage/ImageLoader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/yellowpage/ImageLoader$State;

.field public static final enum LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

.field public static final enum LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

.field public static final enum NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader$State;

    const-string v1, "NEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/yellowpage/ImageLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader$State;

    const-string v1, "LOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/yellowpage/ImageLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader$State;

    const-string v1, "LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/yellowpage/ImageLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v5, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    aput-object v5, v1, v2

    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->$VALUES:[Lcom/miui/internal/yellowpage/ImageLoader$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/yellowpage/ImageLoader$State;
    .registers 2

    const-class v0, Lcom/miui/internal/yellowpage/ImageLoader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/yellowpage/ImageLoader$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/internal/yellowpage/ImageLoader$State;
    .registers 1

    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader$State;->$VALUES:[Lcom/miui/internal/yellowpage/ImageLoader$State;

    invoke-virtual {v0}, [Lcom/miui/internal/yellowpage/ImageLoader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/yellowpage/ImageLoader$State;

    return-object v0
.end method
