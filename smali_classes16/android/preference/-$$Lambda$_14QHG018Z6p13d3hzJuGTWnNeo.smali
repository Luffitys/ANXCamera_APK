.class public final synthetic Landroid/preference/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic INSTANCE:Landroid/preference/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/preference/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    invoke-direct {v0}, Landroid/preference/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;-><init>()V

    sput-object v0, Landroid/preference/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Landroid/preference/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
