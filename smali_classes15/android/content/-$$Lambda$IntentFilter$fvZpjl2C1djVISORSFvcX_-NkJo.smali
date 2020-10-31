.class public final synthetic Landroid/content/-$$Lambda$IntentFilter$fvZpjl2C1djVISORSFvcX_-NkJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/IntentFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/-$$Lambda$IntentFilter$fvZpjl2C1djVISORSFvcX_-NkJo;->f$0:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/content/-$$Lambda$IntentFilter$fvZpjl2C1djVISORSFvcX_-NkJo;->f$0:Landroid/content/IntentFilter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->lambda$addDataType$0$IntentFilter(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
