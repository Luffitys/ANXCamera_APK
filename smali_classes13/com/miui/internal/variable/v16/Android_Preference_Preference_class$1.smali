.class Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;
.super Ljava/lang/Object;
.source "Android_Preference_Preference_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    # invokes: Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    invoke-static/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->access$100(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public onBindView(Landroid/preference/Preference;Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;

    const-wide/16 v1, 0x0

    # invokes: Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->access$000(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method
