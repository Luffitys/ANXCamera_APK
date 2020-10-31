.class Landroid/util/MiuiMultiWindowUtils$1;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$freeformPkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$freeformPkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$freeformPkg:Ljava/lang/String;

    # invokes: Landroid/util/MiuiMultiWindowUtils;->saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowUtils;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
