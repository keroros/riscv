SUBDIRS := \
	riscv_soc/QA_DIR \
	core/alu/QA_DIR \
	core/ctrl_unit/QA_DIR \
	core/execute/QA_DIR \
	core/id_ex_buf/QA_DIR \
	core/if_id_buf/QA_DIR \
	core/inst_decode/QA_DIR \
	core/pc_reg/QA_DIR \
	core/register_file/QA_DIR \
	core/riscv_core/QA_DIR \
	perips/ram/QA_DIR \
	perips/rom/QA_DIR

.PHONY: clean
clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning $$dir"; \
		$(MAKE) -C $$dir clean; \
	done

