.class public final synthetic Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$2R9T6zqLOUvx4z5eu1pSMWsejpU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/dreams/DreamService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/dreams/DreamService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$2R9T6zqLOUvx4z5eu1pSMWsejpU;->f$0:Landroid/service/dreams/DreamService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$2R9T6zqLOUvx4z5eu1pSMWsejpU;->f$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->lambda$detach$1(Landroid/service/dreams/DreamService;)V

    return-void
.end method
