.class Lmiui/animation/internal/AnimRunner$Holder;
.super Ljava/lang/Object;
.source "AnimRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/internal/AnimRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final inst:Lmiui/animation/internal/AnimRunner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/animation/internal/AnimRunner;

    invoke-direct {v0}, Lmiui/animation/internal/AnimRunner;-><init>()V

    sput-object v0, Lmiui/animation/internal/AnimRunner$Holder;->inst:Lmiui/animation/internal/AnimRunner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
