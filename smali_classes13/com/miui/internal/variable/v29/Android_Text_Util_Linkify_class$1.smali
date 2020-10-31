.class Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;
.super Ljava/lang/Object;
.source "Android_Text_Util_Linkify_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;->this$0:Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLinks(Landroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;->this$0:Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    # invokes: Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->handleAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    invoke-static/range {v0 .. v5}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->access$100(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method public gatherLinks(Landroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;->this$0:Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;

    const-wide/16 v2, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    # invokes: Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->handleGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    invoke-static/range {v1 .. v10}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->access$000(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method
