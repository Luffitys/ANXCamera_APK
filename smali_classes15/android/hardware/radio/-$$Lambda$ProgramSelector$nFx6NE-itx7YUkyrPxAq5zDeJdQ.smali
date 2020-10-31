.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramSelector$nFx6NE-itx7YUkyrPxAq5zDeJdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/hardware/radio/-$$Lambda$ProgramSelector$nFx6NE-itx7YUkyrPxAq5zDeJdQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/-$$Lambda$ProgramSelector$nFx6NE-itx7YUkyrPxAq5zDeJdQ;

    invoke-direct {v0}, Landroid/hardware/radio/-$$Lambda$ProgramSelector$nFx6NE-itx7YUkyrPxAq5zDeJdQ;-><init>()V

    sput-object v0, Landroid/hardware/radio/-$$Lambda$ProgramSelector$nFx6NE-itx7YUkyrPxAq5zDeJdQ;->INSTANCE:Landroid/hardware/radio/-$$Lambda$ProgramSelector$nFx6NE-itx7YUkyrPxAq5zDeJdQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->lambda$new$3(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result p1

    return p1
.end method
