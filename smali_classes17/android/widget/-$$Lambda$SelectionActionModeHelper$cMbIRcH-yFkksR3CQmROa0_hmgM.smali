.class public final synthetic Landroid/widget/-$$Lambda$SelectionActionModeHelper$cMbIRcH-yFkksR3CQmROa0_hmgM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/text/Layout$SelectionRectangleConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$SelectionActionModeHelper$cMbIRcH-yFkksR3CQmROa0_hmgM;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(FFFFI)V
    .registers 12

    iget-object v0, p0, Landroid/widget/-$$Lambda$SelectionActionModeHelper$cMbIRcH-yFkksR3CQmROa0_hmgM;->f$0:Ljava/util/List;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper;->lambda$convertSelectionToRectangles$2(Ljava/util/List;FFFFI)V

    return-void
.end method
