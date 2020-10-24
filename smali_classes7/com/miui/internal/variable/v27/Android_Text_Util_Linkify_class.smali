.class public Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;
.super Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;
.source ""


# static fields
.field private static final mGatherTelLinks:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "gatherTelLinks"

    const-string v2, "(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;->mGatherTelLinks:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected addEmailLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->callOriginalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result p0

    return p0
.end method

.method public gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0

    sget-object p0, Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;->mGatherTelLinks:Lmiui/reflect/Method;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, p3, p1

    invoke-virtual {p0, p2, p2, p3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
