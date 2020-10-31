.class public final synthetic Landroid/hardware/radio/-$$Lambda$RadioManager$1$yOwq8CG0kiZcgKFclFSIrjag008;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/Announcement$OnListUpdatedListener;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/Announcement$OnListUpdatedListener;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$RadioManager$1$yOwq8CG0kiZcgKFclFSIrjag008;->f$0:Landroid/hardware/radio/Announcement$OnListUpdatedListener;

    iput-object p2, p0, Landroid/hardware/radio/-$$Lambda$RadioManager$1$yOwq8CG0kiZcgKFclFSIrjag008;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$RadioManager$1$yOwq8CG0kiZcgKFclFSIrjag008;->f$0:Landroid/hardware/radio/Announcement$OnListUpdatedListener;

    iget-object v1, p0, Landroid/hardware/radio/-$$Lambda$RadioManager$1$yOwq8CG0kiZcgKFclFSIrjag008;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/hardware/radio/RadioManager$1;->lambda$onListUpdated$0(Landroid/hardware/radio/Announcement$OnListUpdatedListener;Ljava/util/List;)V

    return-void
.end method
