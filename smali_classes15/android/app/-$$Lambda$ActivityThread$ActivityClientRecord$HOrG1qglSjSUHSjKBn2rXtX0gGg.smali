.class public final synthetic Landroid/app/-$$Lambda$ActivityThread$ActivityClientRecord$HOrG1qglSjSUHSjKBn2rXtX0gGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityThread$ActivityClientRecord;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityThread$ActivityClientRecord$HOrG1qglSjSUHSjKBn2rXtX0gGg;->f$0:Landroid/app/ActivityThread$ActivityClientRecord;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityThread$ActivityClientRecord$HOrG1qglSjSUHSjKBn2rXtX0gGg;->f$0:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread$ActivityClientRecord;->lambda$init$0$ActivityThread$ActivityClientRecord(Landroid/content/res/Configuration;I)V

    return-void
.end method
