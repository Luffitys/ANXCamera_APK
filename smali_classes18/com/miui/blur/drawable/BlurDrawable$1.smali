.class Lcom/miui/blur/drawable/BlurDrawable$1;
.super Ljava/lang/Object;
.source "BlurDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/blur/drawable/BlurDrawable;


# direct methods
.method constructor <init>(Lcom/miui/blur/drawable/BlurDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/blur/drawable/BlurDrawable$1;->this$0:Lcom/miui/blur/drawable/BlurDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/miui/blur/drawable/BlurDrawable$1;->this$0:Lcom/miui/blur/drawable/BlurDrawable;

    invoke-virtual {v0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateSelf()V

    return-void
.end method
