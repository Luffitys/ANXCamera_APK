.class public Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;
.super Lcom/miui/internal/variable/v16/Android_View_Accessibility_AccessibilityEvent_class;
.source "Android_View_Accessibility_AccessibilityEvent_class.java"


# static fields
.field protected static setContentChangeTypes:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-class v0, Landroid/view/accessibility/AccessibilityEvent;

    const-string v1, "setContentChangeTypes"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes:Lmiui/reflect/Method;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes:Lmiui/reflect/Method;

    :goto_11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_View_Accessibility_AccessibilityEvent_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 8

    sget-object v0, Lcom/miui/internal/variable/v19/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes:Lmiui/reflect/Method;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_12
    return-void
.end method
