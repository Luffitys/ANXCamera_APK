.class public Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;
.super Lcom/miui/internal/variable/v16/Android_View_Accessibility_AccessibilityEvent_class;
.source ""


# static fields
.field protected static setContentChangeTypes:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/view/accessibility/AccessibilityEvent;

    const-string v1, "setContentChangeTypes"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes:Lmiui/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes:Lmiui/reflect/Method;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_View_Accessibility_AccessibilityEvent_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 3

    sget-object p0, Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes:Lmiui/reflect/Method;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
